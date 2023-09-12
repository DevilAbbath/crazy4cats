# Administrador
User.create!(
  email: 'master@senkutech.cl',
  password: 'abc123',
  password_confirmation: 'abc123',
  role: 'admin'
)

# Crear un standard para registro de comentarios en anonimato
User.create!(
  email: 'whatshername@senkutech.cl',
  password: 'abc123', # siempre mayor a 6 caracteres
  role: 'anonimo'
)

Post.create!(
  title: 'Tips de cuidado sobre los gatos',
  user: User.first,
  content: 'Los gatos son unos animales fantasticos para la compañia debido a que son muy independientes. Aquí unos tips para el cuidado de tu felino en caso de tener uno o muchos:

1. La buena alimentación de nuestro gato es un punto esencial de su salud. Debemos darle un pienso específico en función de su peso y edad.

2. Tener una bandeja sanitaria y cambiar diariamente la arena para gatos es otro de los cuidados básicos que hemos de seguir.

3. Los gatos deben ser bañados desde pequeños. Lo ideal es cada 15 días.

4. Debemos tener cuidado con cables, enchufes, plantas y también ventanas o balcones. para que no puedan sufrir ningún accidente.

5. Debemos vacunar y desparasitar a nuestro felino siguiendo las indicaciones del veterinario.

Los gatos son realmente criaturas asombrosas que han capturado los corazones de muchas personas en todo el mundo!'
)
