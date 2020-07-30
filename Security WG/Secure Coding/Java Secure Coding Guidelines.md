# Java Secure Coding Guidelines  

This coding standard consists of rules and recommendations, collectively referred to as guidelines. Rules are meant to provide normative requirements for code, whereas recommendations are meant to provide guidance that, when followed, should improve the safety, reliability, and security of software systems.  

## Rule 00. Input Validation and Data Sanitization (IDS)  

> ***IDS00-J.*** Prevent SQL injection.  
> ***IDS01-J.*** Normalize strings before validating them.  
> ***IDS02-J.*** Canonicalize path names before validating them.  
> ***IDS03-J.*** Do not log unsanitized user input.  
> ***IDS04-J.*** Safely extract files from ZipInputStream.  
> ***IDS05-J.*** Use a safe subset of ASCII for file and path names.  
> ***IDS06-J.*** Exclude unsanitized user input from format strings.  
> ***IDS07-J.*** Sanitize untrusted data passed to the Runtime.exec() method.  
> ***IDS08-J.*** Sanitize untrusted data included in a regular expression.  
> ***IDS09-J.*** Specify an appropriate locale when comparing locale-dependent data.  
> ***IDS10-J.*** Don't form strings containing partial characters.  
> ***IDS11-J.*** Perform any string modifications before validation.  
> ***IDS13-J.*** Use compatible character encodings on both sides of file or network IO.  
> ***IDS14-J.*** Do not trust the contents of hidden form fields.  
> ***IDS15-J.*** Do not allow sensitive information to leak outside a trust boundary.  
> ***IDS16-J.*** Prevent XML Injection.  
> ***IDS17-J.*** Prevent XML External Entity Attacks.  


## Rule 01. Declarations and Initialization (DCL)

> ***DCL00-J.*** Prevent class initialization cycles.  
> ***DCL01-J.*** Do not reuse public identifiers from the Java Standard Library.  
> ***DCL02-J.*** Do not modify the collection's elements during an enhanced for statement.  


## Rule 02. Expressions (EXP)

> ***EXP00-J.*** Do not ignore values returned by methods.  
> ***EXP01-J.*** Do not use a null in a case where an object is required.  
> ***EXP02-J.*** Do not use the Object.equals() method to compare two arrays.  
> ***EXP03-J.*** Do not use the equality operators when comparing values of boxed primitives.  
> ***EXP04-J.*** Do not pass arguments to certain Java Collections Framework methods that are a different type than the collection parameter type.  
> ***EXP05-J.*** Do not follow a write by a subsequent write or read of the same object within an expression.  
> ***EXP06-J.*** Expressions used in assertions must not produce side effects.  
> ***EXP07-J.*** Prevent loss of useful data due to weak references. 

## Rule 03. Numeric Types and Operations (NUM)


> ***NUM00-J.*** Detect or prevent integer overflow.  
> ***NUM01-J.*** Do not perform bitwise and arithmetic operations on the same data.  
> ***NUM02-J.*** Ensure that division and remainder operations do not result in divide-by-zero errors.  
> ***NUM03-J.*** Use integer types that can fully represent the possible range of unsigned data.  
> ***NUM04-J.*** Do not use floating-point numbers if precise computation is required.  
> ***NUM07-J.*** Do not attempt comparisons with NaN.  
> ***NUM08-J.*** Check floating-point inputs for exceptional values.  
> ***NUM09-J.*** Do not use floating-point variables as loop counters.  
> ***NUM10-J.*** Do not construct BigDecimal objects from floating-point literals.  
> ***NUM11-J.*** Do not compare or inspect the string representation of floating-point values.  
> ***NUM12-J.*** Ensure conversions of numeric types to narrower types do not result in lost or misinterpreted data.  
> ***NUM13-J.*** Avoid loss of precision when converting primitive integers to floating-point.  
> ***NUM14-J.*** Use shift operators correctly.  

## Rule 04. Characters and Strings (STR)

> ***STR00-J.*** Don't form strings containing partial characters from variable-width encodings.  
> ***STR01-J.*** Do not assume that a Java char fully represents a Unicode code point.  
> ***STR02-J.*** Specify an appropriate locale when comparing locale-dependent data.  
> ***STR03-J.*** Do not encode noncharacter data as a string.  
> ***STR04-J.*** Use compatible character encodings when communicating string data between JVMs.  


## Rule 05. Object Orientation (OBJ)

> ***OBJ01-J.*** Limit accessibility of fields.  
> ***OBJ02-J.*** Preserve dependencies in subclasses when changing superclasses.  
> ***OBJ03-J.*** Prevent heap pollution.  
> ***OBJ04-J.*** Provide mutable classes with copy functionality to safely allow passing instances to untrusted code.  
> ***OBJ05-J.*** Do not return references to private mutable class members.  
> ***OBJ06-J.*** Defensively copy mutable inputs and mutable internal components.  
> ***OBJ07-J.*** Sensitive classes must not let themselves be copied.  
> ***OBJ08-J.*** Do not expose private members of an outer class from within a nested class.  
> ***OBJ09-J.*** Compare classes and not class names.  
> ***OBJ10-J.*** Do not use public static nonfinal fields.  
> ***OBJ11-J.*** Be wary of letting constructors throw exceptions.  
> ***OBJ12-J.*** Respect object-based annotations.  
> ***OBJ13-J.*** Ensure that references to mutable objects are not exposed.  
> ***OBJ14-J.*** Do not use an object that has been freed.  


## Rule 06. Methods (MET)

> ***MET00-J.*** Validate method arguments.  
> ***MET01-J.*** Never use assertions to validate method arguments.  
> ***MET02-J.*** Do not use deprecated or obsolete classes or methods.  
> ***MET03-J.*** Methods that perform a security check must be declared private or final.  
> ***MET04-J.*** Do not increase the accessibility of overridden or hidden methods.  
> ***MET05-J.*** Ensure that constructors do not call overridable methods.  
> ***MET06-J.*** Do not invoke overridable methods in clone().  
> ***MET07-J.*** Never declare a class method that hides a method declared in a superclass or superinterface.  
> ***MET08-J.*** Preserve the equality contract when overriding the equals() method.  
> ***MET09-J.*** Classes that define an equals() method must also define a hashCode() method.  
> ***MET10-J.*** Follow the general contract when implementing the compareTo() method.  
> ***MET11-J.*** Ensure that keys used in comparison operations are immutable.  
> ***MET12-J.*** Do not use finalizers.  
> ***MET13-J.*** Do not assume that reassigning method arguments modifies the calling environment.  



## Rule 07. Exceptional Behavior (ERR)


> ***ERR00-J.*** Do not suppress or ignore checked exceptions.  
> ***ERR01-J.*** Do not allow exceptions to expose sensitive information.  
> ***ERR02-J.*** Prevent exceptions while logging data.  
> ***ERR03-J.*** Restore prior object state on method failure.  
> ***ERR04-J.*** Do not complete abruptly from a finally block.  
> ***ERR05-J.*** Do not let checked exceptions escape from a finally block.  
> ***ERR06-J.*** Do not throw undeclared checked exceptions.  
> ***ERR07-J.*** Do not throw RuntimeException, Exception, or Throwable.  
> ***ERR08-J.*** Do not catch NullPointerException or any of its ancestors.  
> ***ERR09-J.*** Do not allow untrusted code to terminate the JVM.  







