.class public Lcom/evancharlton/mileage/dao/Field;
.super Lcom/evancharlton/mileage/dao/Dao;
.source "Field.java"


# annotations
.annotation runtime Lcom/evancharlton/mileage/dao/Dao$DataObject;
    path = "fields/"
.end annotation


# static fields
.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field protected mDescription:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$CanBeEmpty;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "description"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700ab
    .end annotation
.end field

.field protected mTitle:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "title"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700aa
    .end annotation
.end field

.field protected mType:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "type"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Nullable;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/content/ContentValues;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/database/Cursor;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Field;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Field;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Field;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/Field;->mDescription:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/Field;->mTitle:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/Field;->mType:Ljava/lang/String;

    .line 49
    return-void
.end method
