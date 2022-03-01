.class public Lcom/evancharlton/mileage/ServiceIntervalActivity;
.super Lcom/evancharlton/mileage/BaseFormActivity;
.source "ServiceIntervalActivity.java"


# instance fields
.field private mDate:Lcom/evancharlton/mileage/views/DateButton;

.field private mDescription:Landroid/widget/EditText;

.field private mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

.field private mDuration:Lcom/evancharlton/mileage/views/DateDelta;

.field private final mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

.field private mIntervalTemplates:Lcom/evancharlton/mileage/views/CursorSpinner;

.field private mOdometer:Landroid/widget/EditText;

.field private mTitle:Landroid/widget/EditText;

.field private mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseFormActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/evancharlton/mileage/dao/ServiceInterval;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    return-void
.end method

.method static synthetic access$000(Lcom/evancharlton/mileage/ServiceIntervalActivity;J)V
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;
    .param p1, "x1"    # J

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->filterTemplates(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Lcom/evancharlton/mileage/dao/ServiceInterval;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    return-object v0
.end method

.method static synthetic access$200(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mOdometer:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDescription:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Lcom/evancharlton/mileage/views/DistanceDelta;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    return-object v0
.end method

.method static synthetic access$600(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Lcom/evancharlton/mileage/views/DateDelta;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    return-object v0
.end method

.method private filterTemplates(J)V
    .locals 4
    .param p1, "id"    # J

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string v2, "vehicle_type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ( select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vehicle_type_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from vehicles where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " =  ?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 143
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mIntervalTemplates:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->filter(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    return-void
.end method


# virtual methods
.method public canDelete()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 208
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->BASE_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 209
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
    .line 203
    const v0, 0x7f070009

    return v0
.end method

.method protected getDao()Lcom/evancharlton/mileage/dao/Dao;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    return-object v0
.end method

.method protected getProjectionArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getUri(J)Landroid/net/Uri;
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 64
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "intervals/"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected initUI()V
    .locals 2

    .prologue
    .line 70
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/CursorSpinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 71
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/CursorSpinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mIntervalTemplates:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 72
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mTitle:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDescription:Landroid/widget/EditText;

    .line 74
    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/DistanceDelta;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    .line 75
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/DateDelta;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    .line 76
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mOdometer:Landroid/widget/EditText;

    .line 77
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/DateButton;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    .line 79
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    new-instance v1, Lcom/evancharlton/mileage/ServiceIntervalActivity$1;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/ServiceIntervalActivity$1;-><init>(Lcom/evancharlton/mileage/ServiceIntervalActivity;)V

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 109
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mIntervalTemplates:Lcom/evancharlton/mileage/views/CursorSpinner;

    new-instance v1, Lcom/evancharlton/mileage/ServiceIntervalActivity$2;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/ServiceIntervalActivity$2;-><init>(Lcom/evancharlton/mileage/ServiceIntervalActivity;)V

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 133
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    const v0, 0x7f030019

    invoke-super {p0, p1, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 50
    return-void
.end method

.method protected populateUI()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mTitle:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDescription:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDistance()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/views/DistanceDelta;->setDelta(J)V

    .line 151
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/views/DateDelta;->setDelta(J)V

    .line 152
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mOdometer:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getStartOdometer()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getStartDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/views/DateButton;->setDate(J)V

    .line 154
    return-void
.end method

.method protected saved()V
    .locals 5

    .prologue
    .line 196
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->deleteAlarm(Landroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getStartDate()J

    move-result-wide v1

    iget-object v3, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDuration()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/evancharlton/mileage/dao/ServiceInterval;->scheduleAlarm(Landroid/content/Context;J)V

    .line 198
    invoke-super {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->saved()V

    .line 199
    return-void
.end method

.method protected setFields()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    .line 158
    iget-object v8, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "title":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 160
    new-instance v8, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v9, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mTitle:Landroid/widget/EditText;

    const v10, 0x7f0700bb

    invoke-direct {v8, v9, v10}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v8

    .line 162
    :cond_0
    iget-object v8, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v8, v7}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setTitle(Ljava/lang/String;)V

    .line 164
    iget-object v8, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    iget-object v9, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setDescription(Ljava/lang/String;)V

    .line 166
    iget-object v8, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    invoke-virtual {v8}, Lcom/evancharlton/mileage/views/DateDelta;->getDelta()J

    move-result-wide v2

    .line 167
    .local v2, "duration":J
    cmp-long v8, v2, v11

    if-nez v8, :cond_1

    .line 168
    new-instance v8, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v9, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDescription:Landroid/widget/EditText;

    const v10, 0x7f0700bf

    invoke-direct {v8, v9, v10}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v8

    .line 170
    :cond_1
    iget-object v8, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v8, v2, v3}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setDuration(J)V

    .line 173
    :try_start_0
    iget-object v8, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    iget-object v9, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mOdometer:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setStartOdometer(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    iget-object v8, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    invoke-virtual {v8}, Lcom/evancharlton/mileage/views/DateButton;->getTimestamp()J

    move-result-wide v5

    .line 179
    .local v5, "timestamp":J
    cmp-long v8, v5, v11

    if-nez v8, :cond_2

    .line 180
    new-instance v8, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    const v9, 0x7f0700c1

    invoke-direct {v8, v9}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v8

    .line 174
    .end local v5    # "timestamp":J
    :catch_0
    move-exception v4

    .line 175
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v9, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mOdometer:Landroid/widget/EditText;

    const v10, 0x7f0700bd

    invoke-direct {v8, v9, v10}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v8

    .line 182
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "timestamp":J
    :cond_2
    iget-object v8, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v8, v5, v6}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setStartDate(J)V

    .line 184
    iget-object v8, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    invoke-virtual {v8}, Lcom/evancharlton/mileage/views/DistanceDelta;->getDelta()J

    move-result-wide v0

    .line 185
    .local v0, "distance":J
    cmp-long v8, v0, v11

    if-nez v8, :cond_3

    .line 186
    new-instance v8, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v9, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    invoke-virtual {v9}, Lcom/evancharlton/mileage/views/DistanceDelta;->getEditField()Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x7f0700c0

    invoke-direct {v8, v9, v10}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v8

    .line 189
    :cond_3
    iget-object v8, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    iget-object v9, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    invoke-virtual {v9}, Lcom/evancharlton/mileage/views/DistanceDelta;->getDelta()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setDistance(J)V

    .line 191
    iget-object v8, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    iget-object v9, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v9}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setVehicleId(J)V

    .line 192
    return-void
.end method
