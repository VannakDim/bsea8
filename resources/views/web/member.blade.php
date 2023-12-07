<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Member</title>
</head>
<body>
    <h1>Members</h1>
    <h4>
        @foreach ($members as $member)
            <h5>{{ $member->company }}</h5>
            @foreach ($member->types as $type)
                <h6>{{ $type->title }}</h6>
            @endforeach
        @endforeach
    </h4>
</body>
</html>