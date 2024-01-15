import streamlit as st
import pandas as pd

st.title('Hello, World!!!!')


# sample1
# ダミーデータの作成
df = pd.DataFrame({
    'name': ['Alice', 'Bob'],
    'age': [25, 30],
    'gender': ['female', 'male']
})

# DataFrameを表示
st.write(df)
# st.dataframe()でも表示可能
st.dataframe(df)

