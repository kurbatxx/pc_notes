# Courses

## [Основы Flutter: путь от Новичка до Профи](https://stepik.org/course/197817/syllabus)


# Start project

```
flutter create <NAME> -e --org="com.<orgname>"
```

```
dart run build_runner watch -d
```

```
FadeInImage(
    image:NetworkImage("your_image_url"),
    placeholder: const AssetImage("your_default_image_path"),
    imageErrorBuilder:(context, error, stackTrace) {
       return Image.asset('your_default_image_path',
           fit: BoxFit.fitWidth
       );
    },
    fit: BoxFit.fitWidth,
 ),
```
