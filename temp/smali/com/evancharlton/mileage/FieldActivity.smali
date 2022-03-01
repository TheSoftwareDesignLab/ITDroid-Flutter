.class public Lcom/evancharlton/mileage/FieldActivity;
.super Lcom/evancharlton/mileage/BaseFormActivity;
.source "FieldActivity.java"


# static fields
.field public static final EXTRA_FIELD_ID:Ljava/lang/String; = "field_id"


# instance fields
.field private mDescription:Landroid/widget/EditText;

.field private final mField:Lcom/evancharlton/mileage/dao/Field;

.field private mTitle:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseFormActivity;-><init>()V

    .line 20
    new-instance v0, Lcom/evancharlton/mileage/dao/Field;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/Field;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/FieldActivity;->mField:Lcom/evancharlton/mileage/dao/Field;

    return-void
.end method


# virtual methods
.method protected getCreateString()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f07001b

    return v0
.end method

.method protected getDao()Lcom/evancharlton/mileage/dao/Dao;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/evancharlton/mileage/FieldActivity;->mField:Lcom/evancharlton/mileage/dao/Field;

    return-object v0
.end method

.method protected getProjectionArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getUri(J)Landroid/net/Uri;
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 39
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "fields/"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected initUI()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/FieldActivity;->mTitle:Landroid/widget/EditText;

    .line 46
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/FieldActivity;->mDescription:Landroid/widget/EditText;

    .line 47
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    const v0, 0x7f03000c

    invoke-super {p0, p1, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 25
    return-void
.end method

.method protected populateUI()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/evancharlton/mileage/FieldActivity;->mTitle:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/FieldActivity;->mField:Lcom/evancharlton/mileage/dao/Field;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Field;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/evancharlton/mileage/FieldActivity;->mDescription:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/FieldActivity;->mField:Lcom/evancharlton/mileage/dao/Field;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Field;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method protected setFields()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/evancharlton/mileage/FieldActivity;->mField:Lcom/evancharlton/mileage/dao/Field;

    iget-object v1, p0, Lcom/evancharlton/mileage/FieldActivity;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/dao/Field;->setTitle(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/evancharlton/mileage/FieldActivity;->mField:Lcom/evancharlton/mileage/dao/Field;

    iget-object v1, p0, Lcom/evancharlton/mileage/FieldActivity;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/dao/Field;->setDescription(Ljava/lang/String;)V

    .line 59
    return-void
.end method
