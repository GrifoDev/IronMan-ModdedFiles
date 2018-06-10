.class public Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;
.super Ljava/lang/Object;
.source "InputMethodSettingValuesWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;


# instance fields
.field private final mAsciiCapableEnabledImis:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 14

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSamsungWorkspace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    :goto_0
    const-string/jumbo v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    return-void

    :cond_0
    new-instance v7, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getDefaultCurrentUserId()I

    move-result v12

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    iput-object v7, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    goto :goto_0
.end method

.method private static getDefaultCurrentUserId()I
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method private getEnabledValidSystemNonAuxAsciiCapableImeCount(Landroid/content/Context;)I
    .locals 6

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v5

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0, v2, p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    if-nez v0, :cond_2

    sget-object v4, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "No \"enabledValidSystemNonAuxAsciiCapableIme\"s found."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;
    .locals 2

    sget-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-direct {v0, p0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateAsciiCapableEnabledImis()V
    .locals 9

    iget-object v7, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    iget-object v6, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    const-string/jumbo v6, "keyboard"

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v7

    return-void
.end method


# virtual methods
.method public getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 6

    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid selected imi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gt v2, v5, :cond_0

    if-eqz v1, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    monitor-exit v4

    invoke-direct {p0, p2}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getEnabledValidSystemNonAuxAsciiCapableImeCount(Landroid/content/Context;)I

    move-result v0

    if-gt v0, v5, :cond_1

    if-ne v0, v5, :cond_2

    xor-int/lit8 v2, v1, 0x1

    :goto_0
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v3

    :cond_1
    return v3

    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 5

    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v5, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ascii capable subtype enabled imi not found. Fall back to English Keyboard subtype."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "keyboard"

    invoke-static {p1, v0, v4, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public refreshAllInputMethodAndSubtypes()V
    .locals 6

    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->updateAsciiCapableEnabledImis()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void
.end method
