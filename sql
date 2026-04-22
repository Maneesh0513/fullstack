import java.util.*;

// Student Class
class Student {
    int id;
    String name;
    String branch;

    Student(int id, String name, String branch) {
        this.id = id;
        this.name = name;
        this.branch = branch;
    }
}

// Training Class
class Training {
    int id;
    String name;

    Training(int id, String name) {
        this.id = id;
        this.name = name;
    }
}

// Main System Class
public class TrainingPortal {

    static List<Student> students = new ArrayList<>();
    static List<Training> trainings = new ArrayList<>();
    static Map<Integer, List<Integer>> attendance = new HashMap<>();

    public static void main(String[] args) {

        // Adding Students
        students.add(new Student(1, "Maneesh", "CSE"));
        students.add(new Student(2, "Rahul", "IT"));

        // Adding Trainings
        trainings.add(new Training(101, "Full Stack"));
        trainings.add(new Training(102, "AI/ML"));

        // Mark Attendance
        markAttendance(1, 101);
        markAttendance(2, 101);

        // Display Data
        displayStudents();
        displayTrainings();
        displayAttendance();
    }

    // Mark Attendance
    public static void markAttendance(int studentId, int trainingId) {
        attendance.putIfAbsent(trainingId, new ArrayList<>());
        attendance.get(trainingId).add(studentId);
    }

    // Display Students
    public static void displayStudents() {
        System.out.println("\nStudents:");
        for (Student s : students) {
            System.out.println(s.id + " - " + s.name + " (" + s.branch + ")");
        }
    }

    // Display Trainings
    public static void displayTrainings() {
        System.out.println("\nTrainings:");
        for (Training t : trainings) {
            System.out.println(t.id + " - " + t.name);
        }
    }

    // Display Attendance
    public static void displayAttendance() {
        System.out.println("\nAttendance:");
        for (int trainingId : attendance.keySet()) {
            System.out.println("Training ID: " + trainingId + " -> Students: " + attendance.get(trainingId));
        }
    }
}
