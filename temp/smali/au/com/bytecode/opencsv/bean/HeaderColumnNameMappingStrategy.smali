.class public Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lau/com/bytecode/opencsv/bean/MappingStrategy;


# instance fields
.field protected descriptors:[Ljava/beans/PropertyDescriptor;

.field protected header:[Ljava/lang/String;

.field protected type:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public captureHeader(Lau/com/bytecode/opencsv/CSVReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    return-void
.end method

.method public createBean()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public findDescriptor(I)Ljava/beans/PropertyDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->findDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected findDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    iget-object v0, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->descriptors:[Ljava/beans/PropertyDescriptor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->loadDescriptors(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    iput-object v0, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->descriptors:[Ljava/beans/PropertyDescriptor;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->descriptors:[Ljava/beans/PropertyDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->descriptors:[Ljava/beans/PropertyDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p0, p1, v1}, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->matches(Ljava/lang/String;Ljava/beans/PropertyDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getColumnName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->type:Ljava/lang/Class;

    return-object v0
.end method

.method protected loadDescriptors(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    invoke-static {p1}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0

    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected matches(Ljava/lang/String;Ljava/beans/PropertyDescriptor;)Z
    .locals 1

    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setType(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;->type:Ljava/lang/Class;

    return-void
.end method
