.class public interface abstract annotation Lcom/evancharlton/mileage/dao/Dao$Column;
.super Ljava/lang/Object;
.source "Dao.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/evancharlton/mileage/dao/Dao$Column;
        value = 0x0
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/dao/Dao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Column"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final BOOLEAN:I = 0x3

.field public static final DOUBLE:I = 0x2

.field public static final INTEGER:I = 0x1

.field public static final LONG:I = 0x5

.field public static final STRING:I = 0x0

.field public static final TIMESTAMP:I = 0x4


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract type()I
.end method

.method public abstract value()I
.end method
