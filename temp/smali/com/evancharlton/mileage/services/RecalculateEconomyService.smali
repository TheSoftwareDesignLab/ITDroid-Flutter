.class public Lcom/evancharlton/mileage/services/RecalculateEconomyService;
.super Landroid/app/IntentService;
.source "RecalculateEconomyService.java"


# static fields
.field public static final CALCULATION_FINISHED:Ljava/lang/String; = "com.evancharlton.mileage.services.RecalculateEconomyService.CALCULATION_FINISHED"

.field public static final EXTRA_AVERAGE_ECONOMY:Ljava/lang/String; = "average_economy"

.field private static final TAG:Ljava/lang/String; = "Mileage"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/evancharlton/mileage/services/RecalculateEconomyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static run(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/services/RecalculateEconomyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string v3, "_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 37
    .local v18, "vehicleId":J
    const-wide/16 v3, -0x1

    cmp-long v3, v18, v3

    if-nez v3, :cond_0

    .line 38
    const-string v3, "Mileage"

    const-string v4, "No vehicle ID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 42
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/evancharlton/mileage/dao/Vehicle;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v17

    .line 43
    .local v17, "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 47
    .local v7, "args":[Ljava/lang/String;
    const-string v6, "vehicle_id = ?"

    .line 49
    .local v6, "selection":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/services/RecalculateEconomyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    sget-object v5, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    const-string v8, "odometer asc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 52
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 53
    const-string v3, "Mileage"

    const-string v4, "Not enough fillups to calculate economy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_1
    const-string v3, "Mileage"

    const-string v4, "Recalculating"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v16, Lcom/evancharlton/mileage/dao/FillupSeries;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/evancharlton/mileage/dao/FillupSeries;-><init>([Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 61
    .local v16, "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 62
    new-instance v15, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v15, v11}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    .line 63
    .local v15, "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/evancharlton/mileage/dao/FillupSeries;->add(Lcom/evancharlton/mileage/dao/Fillup;)Z

    .line 65
    invoke-virtual {v15}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/evancharlton/mileage/math/Calculator;->fillupEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v13

    .line 67
    .local v13, "economy":D
    invoke-virtual {v15}, Lcom/evancharlton/mileage/dao/Fillup;->getEconomy()D

    move-result-wide v3

    cmpl-double v3, v13, v3

    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {v15, v13, v14}, Lcom/evancharlton/mileage/dao/Fillup;->setEconomy(D)V

    .line 75
    .end local v13    # "economy":D
    :cond_2
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/evancharlton/mileage/dao/Fillup;->saveIfChanged(Landroid/content/Context;)Z
    :try_end_0
    .catch Lcom/evancharlton/mileage/exceptions/InvalidFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 76
    :catch_0
    move-exception v12

    .line 77
    .local v12, "e":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    goto :goto_0

    .line 71
    .end local v12    # "e":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    :cond_3
    const-wide/16 v3, 0x0

    invoke-virtual {v15, v3, v4}, Lcom/evancharlton/mileage/dao/Fillup;->setEconomy(D)V

    goto :goto_2

    .line 81
    .end local v15    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    :cond_4
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/evancharlton/mileage/math/Calculator;->averageEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v9

    .line 83
    .local v9, "avgEconomy":D
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 85
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.evancharlton.mileage.services.RecalculateEconomyService.CALCULATION_FINISHED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/services/RecalculateEconomyService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "average_economy"

    invoke-virtual {v3, v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/evancharlton/mileage/services/RecalculateEconomyService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
