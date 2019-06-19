package dto;

import org.springframework.format.annotation.DateTimeFormat;
import java.util.Date;
import java.util.Objects;

//Data Transfer Object

public class ChildDTO {
    private Integer id;
    private String name;
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private Date birthDate;
    private Integer parent1id;
    private Integer parent2id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public Integer getParent1id() {
        return parent1id;
    }

    public void setParent1id(Integer parent1id) {
        this.parent1id = parent1id;
    }

    public Integer getParent2id() {
        return parent2id;
    }

    public void setParent2id(Integer parent2id) {
        this.parent2id = parent2id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ChildDTO childDTO = (ChildDTO) o;
        return Objects.equals(id, childDTO.id) &&
                Objects.equals(name, childDTO.name) &&
                Objects.equals(birthDate, childDTO.birthDate) &&
                Objects.equals(parent1id, childDTO.parent1id) &&
                Objects.equals(parent2id, childDTO.parent2id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, birthDate, parent1id, parent2id);
    }

    @Override
    public String toString() {
        return "ChildDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", birthDate=" + birthDate +
                ", parent1id=" + parent1id +
                ", parent2id=" + parent2id +
                '}';
    }
}
