package com.example.tasklist.web.mappers;

import java.util.List;

public interface Mappable<E, D> {

    D toDto(E entity);

    List<D> toDtoList(List<E> entity);

    E toEntity(D dto);

//    List<E> toEntitylist(List<D> dtos);
}
