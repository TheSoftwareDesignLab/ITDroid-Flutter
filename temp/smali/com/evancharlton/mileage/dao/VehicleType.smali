.class public Lcom/evancharlton/mileage/dao/VehicleType;
.super Lcom/evancharlton/mileage/dao/Dao;
.source "VehicleType.java"


# annotations
.annotation runtime Lcom/evancharlton/mileage/dao/Dao$DataObject;
    path = "vehicles/types/"
.end annotation


# static fields
.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field protected mDescription:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$CanBeEmpty;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "description"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700b5
    .end annotation
.end field

.field protected mTitle:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "title"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700b4
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/content/ContentValues;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/database/Cursor;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/VehicleType;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/VehicleType;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/VehicleType;->mDescription:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/VehicleType;->mTitle:Ljava/lang/String;

    .line 35
    return-void
.end method
