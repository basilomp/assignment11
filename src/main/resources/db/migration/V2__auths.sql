create table authorities (
    id serial,
    name varchar(50) not null,
    primary key (id)
);

CREATE TABLE authorities_roles (
                             role_id               bigint not null,
                             authorities_id               int not null,
                             primary key (role_id, authorities_id),
                             foreign key (role_id) references roles (id),
                             foreign key (authorities_id) references authorities (id)
);

