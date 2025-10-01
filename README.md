
A Flutter mobile app that demonstrates:  
- **Firebase Authentication** (Login & Register)  
- **API Integration** with [JSONPlaceholder](https://jsonplaceholder.typicode.com/albums)  
- **State Management** using **Cubit (flutter_bloc)**  
- **Responsive UI** (Mobile & Tablet support)  
- **Animations** (Hero, Fade, Slide Up)  

---

## Features  

### Authentication  
- User **Login** & **Register** with Firebase Authentication  
- Form validation (email format, password length, etc.)  
- Error handling (invalid credentials, network issues)  

### Home Screen  
- Fetches albums data from public API:  
   `https://jsonplaceholder.typicode.com/albums`  
- Displays albums in a **responsive layout**:  
  - Grid on tablets  
  - List on mobile  
- Each album animates into view with **Fade + Slide animation**  
- **Hero Animation** between Home → Details screen  

### Animations  
- `TweenAnimationBuilder` → Fade & Slide transition for list/grid items  
- `Hero` animation between Album Card & Details Screen  
- Custom **page transition** with FadeTransition  

### State Management  
- Implemented using **Cubit (flutter_bloc)**  
- Handles **Loading / Loaded / Error** states cleanly  

### Clean Code  
- **Services** → API requests  
- **Cubits** → Business logic  
- **Models** → Album model  
- **Widgets** → UI components  
- **Screens** → Login, Register, Home, Details  

