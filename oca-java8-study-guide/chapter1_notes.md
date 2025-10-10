# 🧩 7. Java Imports — Summary

**Note:**  
`import package.*` does **not** include subpackages.  
If class names conflict, use the **full package name**.

---

## 🐦 8. Question: Command-line Arguments — *BirdDisplay*

**Note:**  
Using `.class` in the command is **invalid** → options **E** and **F** are wrong.  
Option **G** is also wrong — the code **compiles successfully**.

---

## 📝 9. Note: Varargs vs Array

> `String... args` is just a shorter syntax for `String[] args`.  
> Both are valid for the `main()` method.

---

## 🧠 12. Note: Local vs Instance Variables — Default Values

**Summary:**
- Only **instance** and **static** variables get default values.
- **Local variables** must be initialized before use (no defaults).

---

## 🔢 15. Question: Underscores in Numeric Literals

**Rule:**  
You can use `_` **only between digits**,  
❌ Not before/after a decimal point or at the start/end of the number.

✅ Example:
```java
int i1 = 1_234;      // valid  
double d4 = 1_234.0; // valid
```

❌ Invalid:
```java
double d1 = 1_234_.0;
double d2 = 1_234._0;
double d3 = 1_234.0_;
```

---

## 🐇 19. Question: Garbage Collection Eligibility — *Rabbit Example*

**Summary:**
- An object becomes **eligible for GC** when **no active reference** points to it.
- Calling `System.gc()` is only a **suggestion** — it does **not guarantee** immediate collection.

---
