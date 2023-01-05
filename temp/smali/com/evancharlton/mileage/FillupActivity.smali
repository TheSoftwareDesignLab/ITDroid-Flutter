.class public Lcom/evancharlton/mileage/FillupActivity;
.super Lcom/evancharlton/mileage/BaseFormActivity;
.source "FillupActivity.java"


# instance fields
.field private mDate:Lcom/evancharlton/mileage/views/DateButton;

.field private final mFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/evancharlton/mileage/views/FieldView;",
            ">;"
        }
    .end annotation
.end field

.field private mFieldsContainer:Landroid/widget/LinearLayout;

.field private mFillup:Lcom/evancharlton/mileage/dao/Fillup;

.field private mIcicle:Landroid/os/Bundle;

.field private mOdometer:Landroid/widget/EditText;

.field private mPartial:Landroid/widget/CheckBox;

.field private mPrice:Landroid/widget/EditText;

.field private mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

.field private mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

.field private mVolume:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseFormActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mFields:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lcom/evancharlton/mileage/dao/Fillup;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    return-void
.end method

.method static synthetic access$002(Lcom/evancharlton/mileage/FillupActivity;Lcom/evancharlton/mileage/dao/Vehicle;)Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/FillupActivity;
    .param p1, "x1"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/evancharlton/mileage/FillupActivity;)Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/FillupActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v0

    return-object v0
.end method

.method private final getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/dao/Vehicle;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load vehicle #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    return-object v0
.end method

.method private setDataFormats()V
    .locals 9

    .prologue
    const v8, 0x7f070043

    const v7, 0x7f070042

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 262
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "data_format"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 263
    .local v0, "dataFormat":I
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v1

    .line 264
    .local v1, "existing":Z
    packed-switch v0, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 266
    :pswitch_0
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/evancharlton/mileage/math/Calculator;->getVolumeUnits(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/evancharlton/mileage/math/Calculator;->getVolumeUnits(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/evancharlton/mileage/FillupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 269
    if-eqz v1, :cond_0

    .line 270
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getUnitPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/evancharlton/mileage/math/Calculator;->getVolumeUnits(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setHint(I)V

    .line 277
    if-eqz v1, :cond_0

    .line 278
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 283
    :pswitch_2
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setHint(I)V

    .line 284
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/evancharlton/mileage/math/Calculator;->getVolumeUnits(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/evancharlton/mileage/FillupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 286
    if-eqz v1, :cond_0

    .line 287
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getUnitPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected deleted()V
    .locals 6

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    const-string v2, "key = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/evancharlton/mileage/provider/Statistics;->AVG_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/provider/Statistic;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 449
    invoke-super {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->deleted()V

    .line 450
    return-void
.end method

.method protected getCreateString()I
    .locals 1

    .prologue
    .line 454
    const v0, 0x7f070016

    return v0
.end method

.method protected getDao()Lcom/evancharlton/mileage/dao/Dao;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    return-object v0
.end method

.method protected getProjectionArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 216
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected initUI()V
    .locals 2

    .prologue
    .line 221
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mOdometer:Landroid/widget/EditText;

    .line 222
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    .line 223
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    .line 224
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/DateButton;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    .line 225
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mPartial:Landroid/widget/CheckBox;

    .line 226
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mFieldsContainer:Landroid/widget/LinearLayout;

    .line 227
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/CursorSpinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 229
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    new-instance v1, Lcom/evancharlton/mileage/FillupActivity$1;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/FillupActivity$1;-><init>(Lcom/evancharlton/mileage/FillupActivity;)V

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 241
    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->setDataFormats()V

    .line 242
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    const v0, 0x7f03000d

    invoke-super {p0, p1, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 74
    iput-object p1, p0, Lcom/evancharlton/mileage/FillupActivity;->mIcicle:Landroid/os/Bundle;

    .line 75
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v1, 0x7f07001e

    const/4 v0, 0x0

    .line 150
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/evancharlton/mileage/FieldListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020005

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 153
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseFormActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 20

    .prologue
    .line 90
    invoke-super/range {p0 .. p0}, Lcom/evancharlton/mileage/BaseFormActivity;->onResume()V

    .line 92
    sget-object v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v2, "fields/"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/evancharlton/mileage/FillupActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 95
    .local v11, "fields":Landroid/database/Cursor;
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    .line 96
    .local v16, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/FillupActivity;->mFieldsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 98
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v10, "fieldMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/evancharlton/mileage/dao/FillupField;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/dao/Fillup;->getFields(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v18

    .line 102
    .local v18, "objectFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evancharlton/mileage/dao/FillupField;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/evancharlton/mileage/dao/FillupField;

    .line 103
    .local v9, "field":Lcom/evancharlton/mileage/dao/FillupField;
    invoke-virtual {v9}, Lcom/evancharlton/mileage/dao/FillupField;->getTemplateId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    .end local v9    # "field":Lcom/evancharlton/mileage/dao/FillupField;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v18    # "objectFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evancharlton/mileage/dao/FillupField;>;"
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 108
    const v1, 0x7f030004

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFieldsContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/evancharlton/mileage/views/DividerView;

    .line 110
    .local v8, "divider":Lcom/evancharlton/mileage/views/DividerView;
    const v1, 0x7f07006d

    invoke-virtual {v8, v1}, Lcom/evancharlton/mileage/views/DividerView;->setText(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/FillupActivity;->mFieldsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    .end local v8    # "divider":Lcom/evancharlton/mileage/views/DividerView;
    :cond_1
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 115
    const-string v1, "title"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 116
    .local v12, "hint":Ljava/lang/String;
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 117
    .local v14, "id":J
    const v1, 0x7f03000e

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 118
    .local v7, "container":Landroid/view/View;
    const v1, 0x7f09001d

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/evancharlton/mileage/views/FieldView;

    .line 119
    .local v9, "field":Lcom/evancharlton/mileage/views/FieldView;
    invoke-virtual {v9, v14, v15}, Lcom/evancharlton/mileage/views/FieldView;->setFieldId(J)V

    .line 120
    long-to-int v1, v14

    invoke-virtual {v9, v1}, Lcom/evancharlton/mileage/views/FieldView;->setId(I)V

    .line 121
    invoke-virtual {v9, v12}, Lcom/evancharlton/mileage/views/FieldView;->setHint(Ljava/lang/CharSequence;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/FillupActivity;->mFieldsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/FillupActivity;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/FillupActivity;->mIcicle:Landroid/os/Bundle;

    if-nez v1, :cond_2

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 126
    :cond_2
    const/16 v19, 0x0

    .line 127
    .local v19, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/FillupActivity;->mIcicle:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/FillupActivity;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v9}, Lcom/evancharlton/mileage/views/FieldView;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 130
    :cond_3
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 131
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/evancharlton/mileage/views/FieldView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 133
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/evancharlton/mileage/dao/FillupField;

    .line 136
    .local v17, "objectField":Lcom/evancharlton/mileage/dao/FillupField;
    if-eqz v17, :cond_1

    .line 137
    invoke-virtual/range {v17 .. v17}, Lcom/evancharlton/mileage/dao/FillupField;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/evancharlton/mileage/views/FieldView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 143
    .end local v7    # "container":Landroid/view/View;
    .end local v9    # "field":Lcom/evancharlton/mileage/views/FieldView;
    .end local v12    # "hint":Ljava/lang/String;
    .end local v14    # "id":J
    .end local v17    # "objectField":Lcom/evancharlton/mileage/dao/FillupField;
    .end local v19    # "value":Ljava/lang/String;
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/FillupActivity;->mFieldsContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    :cond_6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseFormActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/FieldView;

    .line 161
    .local v0, "fieldView":Lcom/evancharlton/mileage/views/FieldView;
    invoke-virtual {v0}, Lcom/evancharlton/mileage/views/FieldView;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/evancharlton/mileage/views/FieldView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v0    # "fieldView":Lcom/evancharlton/mileage/views/FieldView;
    :cond_0
    return-void
.end method

.method protected populateUI()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 246
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v0

    .line 247
    .local v0, "odometer":D
    mul-double v2, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double v0, v2, v4

    .line 248
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mOdometer:Landroid/widget/EditText;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/views/DateButton;->setDate(J)V

    .line 250
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mPartial:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 252
    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->setDataFormats()V

    .line 254
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    const v2, 0x7f0700e1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/evancharlton/mileage/FillupActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/views/DateButton;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/evancharlton/mileage/FillupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/FillupActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getVehicleId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/views/CursorSpinner;->setSelectedId(J)V

    .line 259
    :cond_0
    return-void
.end method

.method protected postSaveValidation()Z
    .locals 6

    .prologue
    .line 168
    :try_start_0
    iget-object v4, p0, Lcom/evancharlton/mileage/FillupActivity;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evancharlton/mileage/views/FieldView;

    .line 169
    .local v2, "fieldView":Lcom/evancharlton/mileage/views/FieldView;
    new-instance v1, Lcom/evancharlton/mileage/dao/FillupField;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v1, v4}, Lcom/evancharlton/mileage/dao/FillupField;-><init>(Landroid/content/ContentValues;)V

    .line 170
    .local v1, "field":Lcom/evancharlton/mileage/dao/FillupField;
    iget-object v4, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Fillup;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/evancharlton/mileage/dao/FillupField;->setFillupId(J)V

    .line 171
    invoke-virtual {v2}, Lcom/evancharlton/mileage/views/FieldView;->getFieldId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/evancharlton/mileage/dao/FillupField;->setTemplateId(J)V

    .line 172
    invoke-virtual {v2}, Lcom/evancharlton/mileage/views/FieldView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/evancharlton/mileage/dao/FillupField;->setValue(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, p0}, Lcom/evancharlton/mileage/dao/FillupField;->save(Landroid/content/Context;)Z
    :try_end_0
    .catch Lcom/evancharlton/mileage/exceptions/InvalidFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v1    # "field":Lcom/evancharlton/mileage/dao/FillupField;
    .end local v2    # "fieldView":Lcom/evancharlton/mileage/views/FieldView;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "exception":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->handleInvalidField(Lcom/evancharlton/mileage/exceptions/InvalidFieldException;)V

    .line 180
    const/4 v4, 0x0

    .end local v0    # "exception":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    :goto_1
    return v4

    .line 175
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v4, 0x1

    goto :goto_1
.end method

.method protected saved()V
    .locals 9

    .prologue
    .line 186
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 187
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "is_valid"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    const-string v4, "item = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v7}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 194
    .local v0, "parent":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupActivity;->finish()V

    .line 200
    .end local v0    # "parent":Landroid/app/Activity;
    :cond_0
    :goto_0
    new-instance v2, Lcom/evancharlton/mileage/dao/Fillup;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v2, v3}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/content/ContentValues;)V

    iput-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    .line 201
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/FillupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    return-void

    .line 196
    .restart local v0    # "parent":Landroid/app/Activity;
    :cond_1
    instance-of v2, v0, Lcom/evancharlton/mileage/Mileage;

    if-eqz v2, :cond_0

    .line 197
    check-cast v0, Lcom/evancharlton/mileage/Mileage;

    .end local v0    # "parent":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/evancharlton/mileage/Mileage;->switchToHistoryTab()V

    goto :goto_0
.end method

.method protected setFields()V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .prologue
    .line 296
    const-wide/16 v23, 0x0

    .line 297
    .local v23, "unitPrice":D
    const-wide/16 v21, 0x0

    .line 298
    .local v21, "totalCost":D
    const-wide/16 v28, 0x0

    .line 299
    .local v28, "volume":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "data_format"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 300
    .local v8, "dataFormat":I
    packed-switch v8, :pswitch_data_0

    .line 338
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v28

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setVolume(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 345
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-wide/from16 v0, v23

    invoke-virtual {v2, v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setUnitPrice(D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5

    .line 350
    mul-double v21, v23, v28

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-wide/from16 v0, v21

    invoke-virtual {v2, v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setTotalCost(D)V

    .line 356
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mOdometer:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 357
    .local v14, "odometerText":Ljava/lang/String;
    const-wide/16 v15, 0x0

    .line 358
    .local v15, "odometerValue":D
    const-string v2, "+"

    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/evancharlton/mileage/dao/Fillup;->loadPrevious(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v17

    .line 360
    .local v17, "previous":Lcom/evancharlton/mileage/dao/Fillup;
    const-wide/16 v18, 0x0

    .line 361
    .local v18, "previousOdometer":D
    if-nez v17, :cond_0

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/FillupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "odometer DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 365
    .local v20, "top":Landroid/database/Cursor;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 366
    new-instance v17, Lcom/evancharlton/mileage/dao/Fillup;

    .end local v17    # "previous":Lcom/evancharlton/mileage/dao/Fillup;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    .line 367
    .restart local v17    # "previous":Lcom/evancharlton/mileage/dao/Fillup;
    if-eqz v17, :cond_0

    .line 368
    invoke-virtual/range {v17 .. v17}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v18

    .line 372
    .end local v20    # "top":Landroid/database/Cursor;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double v15, v18, v4

    .line 376
    .end local v17    # "previous":Lcom/evancharlton/mileage/dao/Fillup;
    .end local v18    # "previousOdometer":D
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setOdometer(D)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupActivity;->mPartial:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/evancharlton/mileage/dao/Fillup;->setPartial(Z)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/evancharlton/mileage/dao/Fillup;->setVehicleId(J)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/views/DateButton;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/evancharlton/mileage/dao/Fillup;->setTimestamp(J)V

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/evancharlton/mileage/dao/Fillup;->setEconomy(D)V

    .line 415
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "location_data"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v2

    if-nez v2, :cond_2

    .line 418
    const-string v2, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/evancharlton/mileage/FillupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/LocationManager;

    .line 419
    .local v13, "locationManager":Landroid/location/LocationManager;
    const-string v2, "network"

    invoke-virtual {v13, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v12

    .line 423
    .local v12, "lastLocation":Landroid/location/Location;
    if-eqz v12, :cond_2

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v12}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/evancharlton/mileage/dao/Fillup;->setLatitude(D)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v12}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/evancharlton/mileage/dao/Fillup;->setLongitude(D)V

    .line 429
    .end local v12    # "lastLocation":Landroid/location/Location;
    .end local v13    # "locationManager":Landroid/location/LocationManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v2

    if-nez v2, :cond_4

    .line 430
    :cond_3
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 431
    .local v26, "values":Landroid/content/ContentValues;
    const-string v2, "economy"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/FillupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    const-string v5, "odometer > ? AND vehicle_id = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/evancharlton/mileage/dao/Fillup;->getVehicleId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v6, v7

    move-object/from16 v0, v26

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/evancharlton/mileage/services/RecalculateEconomyService;->run(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)V

    .line 442
    .end local v26    # "values":Landroid/content/ContentValues;
    :cond_4
    return-void

    .line 303
    .end local v14    # "odometerText":Ljava/lang/String;
    .end local v15    # "odometerValue":D
    :pswitch_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v28

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setVolume(D)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 310
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-wide/from16 v0, v21

    invoke-virtual {v2, v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setTotalCost(D)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    .line 315
    div-double v23, v21, v28

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-wide/from16 v0, v23

    invoke-virtual {v2, v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setUnitPrice(D)V

    goto/16 :goto_0

    .line 305
    :catch_0
    move-exception v9

    .line 306
    .local v9, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    const v5, 0x7f0700a6

    invoke-direct {v2, v4, v5}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v2

    .line 312
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v9

    .line 313
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    const v5, 0x7f0700a8

    invoke-direct {v2, v4, v5}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v2

    .line 320
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-wide/from16 v0, v21

    invoke-virtual {v2, v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setTotalCost(D)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    .line 327
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-wide/from16 v0, v23

    invoke-virtual {v2, v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setUnitPrice(D)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3

    .line 332
    div-double v28, v21, v23

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setVolume(D)V

    goto/16 :goto_0

    .line 322
    :catch_2
    move-exception v9

    .line 323
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    const v5, 0x7f0700a8

    invoke-direct {v2, v4, v5}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v2

    .line 329
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v9

    .line 330
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    const v5, 0x7f0700a7

    invoke-direct {v2, v4, v5}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v2

    .line 340
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v9

    .line 341
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    const v5, 0x7f0700a6

    invoke-direct {v2, v4, v5}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v2

    .line 347
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v9

    .line 348
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    const v5, 0x7f0700a7

    invoke-direct {v2, v4, v5}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v2

    .line 374
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "odometerText":Ljava/lang/String;
    .restart local v15    # "odometerValue":D
    :cond_5
    :try_start_7
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-wide v15

    goto/16 :goto_1

    .line 377
    .end local v14    # "odometerText":Ljava/lang/String;
    .end local v15    # "odometerValue":D
    :catch_6
    move-exception v9

    .line 378
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupActivity;->mOdometer:Landroid/widget/EditText;

    const v5, 0x7f0700a5

    invoke-direct {v2, v4, v5}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v2

    .line 389
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "odometerText":Ljava/lang/String;
    .restart local v15    # "odometerValue":D
    :cond_6
    sget-object v2, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 393
    .local v3, "vehicleUri":Landroid/net/Uri;
    const/16 v25, 0x0

    .line 394
    .local v25, "v":Lcom/evancharlton/mileage/dao/Vehicle;
    sget-object v4, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/evancharlton/mileage/FillupActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 396
    .local v27, "vehicleCursor":Landroid/database/Cursor;
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 397
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 398
    new-instance v25, Lcom/evancharlton/mileage/dao/Vehicle;

    .end local v25    # "v":Lcom/evancharlton/mileage/dao/Vehicle;
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/Vehicle;-><init>(Landroid/database/Cursor;)V

    .line 399
    .restart local v25    # "v":Lcom/evancharlton/mileage/dao/Vehicle;
    const/16 v17, 0x0

    .line 400
    .restart local v17    # "previous":Lcom/evancharlton/mileage/dao/Fillup;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/evancharlton/mileage/dao/Fillup;->loadPrevious(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v17

    .line 405
    :goto_3
    if-nez v17, :cond_8

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/evancharlton/mileage/dao/Fillup;->setEconomy(D)V

    goto/16 :goto_2

    .line 403
    :cond_7
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/dao/Vehicle;->loadLatestFillup(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v17

    goto :goto_3

    .line 408
    :cond_8
    new-instance v2, Lcom/evancharlton/mileage/dao/FillupSeries;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/evancharlton/mileage/dao/Fillup;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    aput-object v6, v4, v5

    invoke-direct {v2, v4}, Lcom/evancharlton/mileage/dao/FillupSeries;-><init>([Lcom/evancharlton/mileage/dao/Fillup;)V

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/evancharlton/mileage/math/Calculator;->averageEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v10

    .line 410
    .local v10, "economy":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2, v10, v11}, Lcom/evancharlton/mileage/dao/Fillup;->setEconomy(D)V

    goto/16 :goto_2

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
