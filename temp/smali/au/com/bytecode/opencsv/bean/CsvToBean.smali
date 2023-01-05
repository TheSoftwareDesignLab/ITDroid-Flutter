.class public Lau/com/bytecode/opencsv/bean/CsvToBean;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertValue(Ljava/lang/String;Ljava/beans/PropertyDescriptor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lau/com/bytecode/opencsv/bean/CsvToBean;->getPropertyEditor(Ljava/beans/PropertyDescriptor;)Ljava/beans/PropertyEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/beans/PropertyEditor;->setAsText(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/beans/PropertyEditor;->getValue()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected getPropertyEditor(Ljava/beans/PropertyDescriptor;)Ljava/beans/PropertyEditor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getPropertyEditorClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyEditor;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/beans/PropertyEditorManager;->findEditor(Ljava/lang/Class;)Ljava/beans/PropertyEditor;

    move-result-object v0

    goto :goto_0
.end method

.method public parse(Lau/com/bytecode/opencsv/bean/MappingStrategy;Ljava/io/Reader;)Ljava/util/List;
    .locals 3

    :try_start_0
    new-instance v0, Lau/com/bytecode/opencsv/CSVReader;

    invoke-direct {v0, p2}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    invoke-interface {p1, v0}, Lau/com/bytecode/opencsv/bean/MappingStrategy;->captureHeader(Lau/com/bytecode/opencsv/CSVReader;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v2}, Lau/com/bytecode/opencsv/bean/CsvToBean;->processLine(Lau/com/bytecode/opencsv/bean/MappingStrategy;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error parsing CSV!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-object v1
.end method

.method protected processLine(Lau/com/bytecode/opencsv/bean/MappingStrategy;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Lau/com/bytecode/opencsv/bean/MappingStrategy;->createBean()Ljava/lang/Object;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    aget-object v3, p2, v0

    invoke-interface {p1, v0}, Lau/com/bytecode/opencsv/bean/MappingStrategy;->findDescriptor(I)Ljava/beans/PropertyDescriptor;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, v4}, Lau/com/bytecode/opencsv/bean/CsvToBean;->convertValue(Ljava/lang/String;Ljava/beans/PropertyDescriptor;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method
