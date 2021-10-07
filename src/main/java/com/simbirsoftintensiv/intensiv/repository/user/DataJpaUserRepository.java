package com.simbirsoftintensiv.intensiv.repository.user;

import com.simbirsoftintensiv.intensiv.entity.User;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@AllArgsConstructor
public class DataJpaUserRepository implements CrudUserRepository{

    private final UserRepository userRepository;

    @Override
    public User save(User user) {
        return userRepository.save(user);
    }

    @Override
    public boolean delete(int id) {
        return userRepository.delete(id) != 0;
    }

    @Override
    public User get(int id) {
        return userRepository.getById(id);
    }

    @Override
    public User getByPhone(Long phone) {
        return userRepository.getByPhone(phone);
    }

    @Override
    public List<User> getAll() {
        return userRepository.findAll();
    }
}
