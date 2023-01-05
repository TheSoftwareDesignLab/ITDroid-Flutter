.class public interface abstract Lau/com/bytecode/opencsv/bean/MappingStrategy;
.super Ljava/lang/Object;


# virtual methods
.method public abstract captureHeader(Lau/com/bytecode/opencsv/CSVReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createBean()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method public abstract findDescriptor(I)Ljava/beans/PropertyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation
.end method
