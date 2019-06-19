package core.services;

import data.model.Child;
import data.model.Employee;
import data.repositories.ChildRepository;
import data.repositories.EmployeeRepository;
import dto.ChildDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.LinkedList;
import java.util.List;

@Service
@Transactional
public class ChildService {

    private ChildRepository childRepository;
    private EmployeeRepository employeeRepository;


    @Autowired
    public ChildService(ChildRepository childRepository, EmployeeRepository employeeRepository) {
        this.childRepository = childRepository;
        this.employeeRepository = employeeRepository;
    }

    //pobiera z tabeli dzieci wszystkie rekordy do wyświetlenia
    public List<ChildDTO> getAllChildren(){

        return convertToDTO(childRepository.findAll());
    }

    //dodaje nowy rekord do tabeli dzieci
    public Child addChild(ChildDTO childDTO){
        Child child = convertFromDTO(childDTO);
        return childRepository.save(child);
    }

    //konwersja listy encji na listę obiektów DTO
    private List<ChildDTO> convertToDTO (List<Child> children){
        List<ChildDTO> childrenDTOList = new LinkedList<>();
        for (Child child : children){
            ChildDTO childDTO = new ChildDTO();
            childDTO.setId(child.getId());
            childDTO.setName(child.getFirstName());
            childDTO.setBirthDate(child.getBirthDate());

            if (child.getParent1()!=null)
                childDTO.setParent1id(child.getParent1id());

            if (child.getParent2()!=null)
                childDTO.setParent2id(child.getParent2id());

            childrenDTOList.add(childDTO);
        }
        return childrenDTOList;
    }

    //konwersja z obiektu DTO na obiekt encji w celu zapisu do bazy
    private Child convertFromDTO(ChildDTO childDTO){
        Child child = new Child();
        child.setId((int)childRepository.count() + 1); //ustawia id
        child.setFirstName(childDTO.getName());
        child.setBirthDate(childDTO.getBirthDate());

        if (childDTO.getParent1id()!=null) {
            Employee parent1 = employeeRepository.findById(childDTO.getParent1id()).get();
            child.setParent1(parent1);
        } else {
            child.setParent1(null);
        }

        if (childDTO.getParent2id()!=null) {
            Employee parent2 = employeeRepository.findById(childDTO.getParent2id()).get();
            child.setParent2(parent2);
        } else {
            child.setParent2(null);
        }
        return child;
    }
}