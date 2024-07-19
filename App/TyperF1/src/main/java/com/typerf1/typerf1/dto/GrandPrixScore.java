package com.typerf1.typerf1.dto;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.*;

@Data
@Entity
@Getter
@Setter
@NoArgsConstructor
public class GrandPrixScore {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    String grandPrixName;
    String sessionName;
    String participantName;
    String participantSurname;
    Long pointsSum;

    public GrandPrixScore(String grandPrixName, String participantName, String participantSurname, Long pointsSum) {
        this.grandPrixName = grandPrixName;
        this.participantName = participantName;
        this.participantSurname = participantSurname;
        this.pointsSum = pointsSum;
    }
}
