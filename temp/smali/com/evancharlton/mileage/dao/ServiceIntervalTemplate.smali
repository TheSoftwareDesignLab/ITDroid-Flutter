.class public Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;
.super Lcom/evancharlton/mileage/dao/Dao;
.source "ServiceIntervalTemplate.java"


# annotations
.annotation runtime Lcom/evancharlton/mileage/dao/Dao$DataObject;
    path = "intervals/templates"
.end annotation


# static fields
.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DISTANCE:Ljava/lang/String; = "distance"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final VEHICLE_TYPE:Ljava/lang/String; = "vehicle_type"


# instance fields
.field protected mDescription:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$CanBeEmpty;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "description"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700b7
    .end annotation
.end field

.field protected mDistance:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "distance"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700b8
    .end annotation
.end field

.field protected mDuration:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "duration"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700b9
    .end annotation
.end field

.field protected mTitle:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "title"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700b6
    .end annotation
.end field

.field protected mVehicleTypeId:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "vehicle_type"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700ba
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/content/ContentValues;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/database/Cursor;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->mDistance:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->mDuration:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleTypeId()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->mVehicleTypeId:J

    return-wide v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->mDescription:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setDistance(J)V
    .locals 0
    .param p1, "distance"    # J

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->mDistance:J

    .line 73
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->mDuration:J

    .line 81
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->mTitle:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setVehicleTypeId(J)V
    .locals 0
    .param p1, "vehicleTypeId"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->mVehicleTypeId:J

    .line 89
    return-void
.end method
