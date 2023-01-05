.class public Lcom/evancharlton/mileage/dao/ServiceInterval;
.super Lcom/evancharlton/mileage/dao/Dao;
.source "ServiceInterval.java"


# annotations
.annotation runtime Lcom/evancharlton/mileage/dao/Dao$DataObject;
    path = "intervals/"
.end annotation


# static fields
.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DISTANCE:Ljava/lang/String; = "distance"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final START_DATE:Ljava/lang/String; = "start_timestamp"

.field public static final START_ODOMETER:Ljava/lang/String; = "start_odometer"

.field public static final TEMPLATE_ID:Ljava/lang/String; = "service_interval_template_id"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final VEHICLE_ID:Ljava/lang/String; = "vehicle_id"


# instance fields
.field protected mDescription:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "description"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700bc
    .end annotation
.end field

.field protected mDistance:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "distance"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700c0
    .end annotation
.end field

.field protected mDuration:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "duration"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700bf
    .end annotation
.end field

.field protected mStartDate:Ljava/util/Date;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "start_timestamp"
        type = 0x4
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mStartOdometer:D
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "start_odometer"
        type = 0x2
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700bd
    .end annotation
.end field

.field protected mTemplateId:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "service_interval_template_id"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mTitle:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "title"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700bb
    .end annotation
.end field

.field protected mVehicleId:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "vehicle_id"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700be
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/content/ContentValues;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/database/Cursor;)V

    .line 78
    return-void
.end method

.method private getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/alarms/IntervalReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, "action":Landroid/content/Intent;
    const-string v1, "_id"

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static final loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/ServiceInterval;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 81
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 82
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 84
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 85
    .local v7, "interval":Lcom/evancharlton/mileage/dao/ServiceInterval;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    new-instance v7, Lcom/evancharlton/mileage/dao/ServiceInterval;

    .end local v7    # "interval":Lcom/evancharlton/mileage/dao/ServiceInterval;
    invoke-direct {v7, v6}, Lcom/evancharlton/mileage/dao/ServiceInterval;-><init>(Landroid/database/Cursor;)V

    .line 88
    .restart local v7    # "interval":Lcom/evancharlton/mileage/dao/ServiceInterval;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 89
    if-nez v7, :cond_1

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load service interval #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    return-object v7
.end method


# virtual methods
.method public delete(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->deleteAlarm(Landroid/content/Context;)V

    .line 175
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;->delete(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public deleteAlarm(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->isExistingObject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 110
    .local v0, "mgr":Landroid/app/AlarmManager;
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 111
    const v1, 0x7f07002c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 114
    .end local v0    # "mgr":Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mDistance:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mDuration:J

    return-wide v0
.end method

.method public getStartDate()J
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartOdometer()D
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mStartOdometer:D

    return-wide v0
.end method

.method public getTemplateId()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mTemplateId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleId()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mVehicleId:J

    return-wide v0
.end method

.method public raiseNotification(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const-string v8, "com.evancharlton.mileage_preferences"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 128
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "interval_notification_enabled"

    const/4 v9, 0x1

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 129
    new-instance v2, Landroid/content/Intent;

    const-class v8, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;

    invoke-direct {v2, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getVehicleId()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/evancharlton/mileage/dao/Vehicle;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v7

    .line 132
    .local v7, "v":Lcom/evancharlton/mileage/dao/Vehicle;
    const v8, 0x7f07002d

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v7}, Lcom/evancharlton/mileage/dao/Vehicle;->getTitle()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "description":Ljava/lang/String;
    new-instance v3, Landroid/app/Notification;

    const v8, 0x7f020017

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 136
    .local v3, "notification":Landroid/app/Notification;
    const-string v8, "_id"

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getId()J

    move-result-wide v9

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 137
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 139
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const/16 v8, 0x10

    iput v8, v3, Landroid/app/Notification;->flags:I

    .line 141
    const-string v8, "interval_notification_led"

    const/4 v9, 0x1

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 142
    iget v8, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v3, Landroid/app/Notification;->flags:I

    .line 143
    const v8, -0x350eb

    iput v8, v3, Landroid/app/Notification;->ledARGB:I

    .line 144
    const/16 v8, 0x1f4

    iput v8, v3, Landroid/app/Notification;->ledOffMS:I

    .line 145
    const/16 v8, 0x1f4

    iput v8, v3, Landroid/app/Notification;->ledOnMS:I

    .line 148
    :cond_0
    const-string v8, "interval_notification_vibrate"

    const/4 v9, 0x1

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 149
    const/4 v8, 0x4

    new-array v8, v8, [J

    fill-array-data v8, :array_0

    iput-object v8, v3, Landroid/app/Notification;->vibrate:[J

    .line 157
    :cond_1
    const-string v8, "interval_notification_ringtone"

    const-string v9, ""

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "uri":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 159
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 162
    :cond_2
    const/4 v8, -0x1

    iput v8, v3, Landroid/app/Notification;->defaults:I

    .line 163
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, p1, v8, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 164
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 166
    .local v4, "notificationMgr":Landroid/app/NotificationManager;
    if-eqz v4, :cond_3

    .line 167
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getId()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v4, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 170
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "notificationMgr":Landroid/app/NotificationManager;
    .end local v6    # "uri":Ljava/lang/String;
    .end local v7    # "v":Lcom/evancharlton/mileage/dao/Vehicle;
    :cond_3
    return-void

    .line 149
    nop

    :array_0
    .array-data 8
        0xfa
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public scheduleAlarm(Landroid/content/Context;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "when"    # J

    .prologue
    const/4 v6, 0x1

    .line 97
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 98
    .local v1, "mgr":Landroid/app/AlarmManager;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 100
    .local v2, "trigger":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 101
    invoke-static {p1, v6, v2}, Lcom/evancharlton/mileage/math/Calculator;->getDateString(Landroid/content/Context;ILjava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "date":Ljava/lang/String;
    const v3, 0x7f07002b

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 104
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mDescription:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setDistance(J)V
    .locals 0
    .param p1, "distance"    # J

    .prologue
    .line 243
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mDistance:J

    .line 244
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 235
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mDuration:J

    .line 236
    return-void
.end method

.method public setStartDate(J)V
    .locals 3
    .param p1, "startDate"    # J

    .prologue
    .line 199
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mStartDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mStartDate:Ljava/util/Date;

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    goto :goto_0
.end method

.method public setStartOdometer(D)V
    .locals 0
    .param p1, "startOdometer"    # D

    .prologue
    .line 211
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mStartOdometer:D

    .line 212
    return-void
.end method

.method public setTemplateId(J)V
    .locals 0
    .param p1, "templateId"    # J

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mTemplateId:J

    .line 228
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mTitle:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setVehicleId(J)V
    .locals 0
    .param p1, "vehicleId"    # J

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/ServiceInterval;->mVehicleId:J

    .line 220
    return-void
.end method
