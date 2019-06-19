package data.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "dzieci")
public class Child {

    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    //@SequenceGenerator(name = "dzieci_id_seq", sequenceName = "dzieci_id_seq")
    //@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "dzieci_id_seq")
    //@GeneratedValue

    //Nie działało jak należy, nie mogłem się z tym uporać,
    //więc postanowiłem ustawiać id 'ręcznie'
    @Column(name = "id")
    private Integer id;

    @Column(nullable = false, name = "imie")
    private String firstName;

    @Column(nullable = false, name = "data_urodzenia")
    @Temporal(TemporalType.DATE)
    private Date birthDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "rodzic1id")
    private Employee parent1;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "rodzic2id")
    private Employee parent2;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public Employee getParent1() {
        return parent1;
    }

    public Integer getParent1id() { return parent1.getId(); }

    public Integer getParent2id() { return parent2.getId(); }

    public void setParent1(Employee parent1) { this.parent1 = parent1; }

    public Employee getParent2() {
        return parent2;
    }

    public void setParent2(Employee parent2) {
        this.parent2 = parent2;
    }
}