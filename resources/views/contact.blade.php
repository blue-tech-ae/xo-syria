<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>رسالة اتصل بنا</title>
</head>
<body>
    <h2>رسالة من صفحة اتصل بنا</h2>
    <p><strong>الاسم:</strong> {{ $name }}</p>
    <p><strong>البريد الإلكتروني:</strong> {{ $email }}</p>
    
    @if(!empty($subject))
        <p><strong>الموضوع:</strong> {{ $subject }}</p>
    @endif
    
    <p><strong>الرسالة:</strong></p>
    <p>{{ $content }}</p>
</body>
</html>