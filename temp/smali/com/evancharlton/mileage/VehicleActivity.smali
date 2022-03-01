.class public Lcom/evancharlton/mileage/VehicleActivity;
.super Lcom/evancharlton/mileage/BaseFormActivity;
.source "VehicleActivity.java"


# instance fields
.field private mCurrency:Landroid/widget/EditText;

.field private mDescription:Landroid/widget/EditText;

.field private mDistanceUnits:I

.field private mDistances:Landroid/widget/Spinner;

.field private mEconomies:Landroid/widget/Spinner;

.field private mEconomyUnits:I

.field private mMake:Landroid/widget/EditText;

.field private mModel:Landroid/widget/EditText;

.field private mSetDefault:Landroid/widget/CheckBox;

.field private mTitle:Landroid/widget/EditText;

.field private mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

.field private mVehicleTypes:Lcom/evancharlton/mileage/views/CursorSpinner;

.field private mVolumeUnits:I

.field private mVolumes:Landroid/widget/Spinner;

.field private mYear:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseFormActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/evancharlton/mileage/dao/Vehicle;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/Vehicle;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDistanceUnits:I

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVolumeUnits:I

    .line 54
    const/4 v0, 0x6

    iput v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mEconomyUnits:I

    return-void
.end method

.method private getDistance()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 213
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDistances:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 219
    :goto_0
    :pswitch_0
    return v0

    .line 217
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDistanceUnits()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Vehicle;->getDistanceUnits()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 229
    :goto_0
    :pswitch_0
    return v0

    .line 227
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEconomy()I
    .locals 2

    .prologue
    const/4 v0, 0x6

    .line 233
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mEconomies:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 253
    :goto_0
    :pswitch_0
    return v0

    .line 237
    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    .line 239
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 241
    :pswitch_3
    const/16 v0, 0x9

    goto :goto_0

    .line 243
    :pswitch_4
    const/16 v0, 0xa

    goto :goto_0

    .line 245
    :pswitch_5
    const/16 v0, 0xb

    goto :goto_0

    .line 247
    :pswitch_6
    const/16 v0, 0xc

    goto :goto_0

    .line 249
    :pswitch_7
    const/16 v0, 0xd

    goto :goto_0

    .line 251
    :pswitch_8
    const/16 v0, 0xe

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getEconomyUnits()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 257
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Vehicle;->getEconomyUnits()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 277
    :goto_0
    :pswitch_0
    return v0

    .line 261
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 263
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 265
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 267
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 269
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 271
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 273
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 275
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getVolume()I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 189
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVolumes:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 197
    :goto_0
    :pswitch_0
    return v0

    .line 193
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 195
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getVolumeUnits()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Vehicle;->getVolumeUnits()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 209
    :goto_0
    :pswitch_0
    return v0

    .line 205
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public canDelete()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 287
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/evancharlton/mileage/VehicleActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 288
    .local v6, "count":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v7, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCreateString()I
    .locals 1

    .prologue
    .line 282
    const v0, 0x7f070020

    return v0
.end method

.method protected getDao()Lcom/evancharlton/mileage/dao/Dao;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    return-object v0
.end method

.method protected getProjectionArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 73
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected initUI()V
    .locals 2

    .prologue
    .line 78
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mTitle:Landroid/widget/EditText;

    .line 79
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDescription:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mMake:Landroid/widget/EditText;

    .line 81
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mModel:Landroid/widget/EditText;

    .line 82
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mYear:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mCurrency:Landroid/widget/EditText;

    .line 84
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/CursorSpinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicleTypes:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 85
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mSetDefault:Landroid/widget/CheckBox;

    .line 86
    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDistances:Landroid/widget/Spinner;

    .line 87
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVolumes:Landroid/widget/Spinner;

    .line 88
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mEconomies:Landroid/widget/Spinner;

    .line 90
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mCurrency:Landroid/widget/EditText;

    invoke-static {}, Lcom/evancharlton/mileage/math/Calculator;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    const v0, 0x7f03001f

    invoke-super {p0, p1, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 59
    return-void
.end method

.method protected populateUI()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 95
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mTitle:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDescription:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mMake:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getMake()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mModel:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mYear:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    .line 102
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 105
    .local v2, "projection":[Ljava/lang/String;
    const-string v5, "default_time desc"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/evancharlton/mileage/VehicleActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 106
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 108
    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleActivity;->mSetDefault:Landroid/widget/CheckBox;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v9

    cmp-long v0, v4, v9

    if-nez v0, :cond_2

    move v0, v7

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDistances:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getDistanceUnits()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 112
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVolumes:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getVolumeUnits()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 113
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mEconomies:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getEconomyUnits()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 115
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Vehicle;->isExistingObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Vehicle;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mCurrency:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-static {v3}, Lcom/evancharlton/mileage/math/Calculator;->getCurrencySymbol(Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void

    :cond_2
    move v0, v8

    .line 108
    goto :goto_0
.end method

.method protected saved()V
    .locals 7

    .prologue
    .line 169
    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getVolumeUnits()I

    move-result v4

    iget v5, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVolumeUnits:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getDistanceUnits()I

    move-result v4

    iget v5, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDistanceUnits:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getEconomyUnits()I

    move-result v4

    iget v5, p0, Lcom/evancharlton/mileage/VehicleActivity;->mEconomyUnits:I

    if-eq v4, v5, :cond_1

    .line 172
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "economy"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 174
    const-string v3, "vehicle_id = ?"

    .line 175
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 178
    .local v0, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    .line 179
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    const-string v6, "item = ?"

    invoke-virtual {v4, v5, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    .end local v0    # "selectionArgs":[Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "where":Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->saved()V

    .line 186
    return-void
.end method

.method protected setFields()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "title":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    new-instance v6, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v7, p0, Lcom/evancharlton/mileage/VehicleActivity;->mTitle:Landroid/widget/EditText;

    const v8, 0x7f0700af

    invoke-direct {v6, v7, v8}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v6

    .line 128
    :cond_0
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v6, v4}, Lcom/evancharlton/mileage/dao/Vehicle;->setTitle(Ljava/lang/String;)V

    .line 130
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mYear:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "year":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    new-instance v6, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v7, p0, Lcom/evancharlton/mileage/VehicleActivity;->mYear:Landroid/widget/EditText;

    const v8, 0x7f0700b0

    invoke-direct {v6, v7, v8}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v6

    .line 134
    :cond_1
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v6, v5}, Lcom/evancharlton/mileage/dao/Vehicle;->setYear(Ljava/lang/String;)V

    .line 136
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mMake:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "make":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    new-instance v6, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v7, p0, Lcom/evancharlton/mileage/VehicleActivity;->mMake:Landroid/widget/EditText;

    const v8, 0x7f0700b1

    invoke-direct {v6, v7, v8}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v6

    .line 140
    :cond_2
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v6, v2}, Lcom/evancharlton/mileage/dao/Vehicle;->setMake(Ljava/lang/String;)V

    .line 142
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mModel:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "model":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 144
    new-instance v6, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v7, p0, Lcom/evancharlton/mileage/VehicleActivity;->mModel:Landroid/widget/EditText;

    const v8, 0x7f0700b2

    invoke-direct {v6, v7, v8}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v6

    .line 146
    :cond_3
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v6, v3}, Lcom/evancharlton/mileage/dao/Vehicle;->setModel(Ljava/lang/String;)V

    .line 148
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "description":Ljava/lang/String;
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v6, v1}, Lcom/evancharlton/mileage/dao/Vehicle;->setDescription(Ljava/lang/String;)V

    .line 151
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    iget-object v7, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicleTypes:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v7}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/evancharlton/mileage/dao/Vehicle;->setVehicleType(J)V

    .line 152
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mSetDefault:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 153
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/evancharlton/mileage/dao/Vehicle;->setDefaultTime(J)V

    .line 155
    :cond_4
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getVolume()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/evancharlton/mileage/dao/Vehicle;->setVolumeUnits(I)V

    .line 156
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getDistance()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/evancharlton/mileage/dao/Vehicle;->setDistanceUnits(I)V

    .line 157
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getEconomy()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/evancharlton/mileage/dao/Vehicle;->setEconomyUnits(I)V

    .line 159
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mCurrency:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "currency":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 161
    invoke-static {}, Lcom/evancharlton/mileage/math/Calculator;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_5
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    iget-object v7, p0, Lcom/evancharlton/mileage/VehicleActivity;->mCurrency:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/evancharlton/mileage/dao/Vehicle;->setCurrency(Ljava/lang/String;)V

    .line 164
    return-void
.end method
