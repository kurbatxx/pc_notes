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
