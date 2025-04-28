//Example

@GenerateMocks([Cat])
class Cat extends Mock implements AbstractCat{}

abstract class AbstractCat{
    void sound();
}

**Build once**
dart run build_runner build --delete-conflicting-outputs
**Watch for changes**
dart run build_runner watch --delete-conflicting-outputs