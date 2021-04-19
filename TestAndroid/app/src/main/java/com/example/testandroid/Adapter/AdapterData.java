package com.example.testandroid.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.testandroid.Model.DataModel;
import com.example.testandroid.R;

import java.util.List;

public class AdapterData extends RecyclerView.Adapter<AdapterData.HolderData>{
    private final Context ctx;
    private final List<DataModel> listData;

    public AdapterData(Context ctx, List<DataModel> listData) {
        this.ctx = ctx;
        this.listData = listData;
    }

    @NonNull
    @Override
    public HolderData onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View layout = LayoutInflater.from(parent.getContext()).inflate(R.layout.card_item, parent, false);
        HolderData holder = new HolderData(layout);
        return holder;
    }

    @Override
    public void onBindViewHolder(@NonNull HolderData holder, int position) {

        DataModel dm = listData.get(position);

        holder.tvID.setText(String.valueOf(dm.getId()));
        holder.tvNoLaporan.setText(dm.getNo_laporan());
        holder.tvNIKPelapor.setText(dm.getNik_pelapor());
        holder.tvNamaPelapor.setText(dm.getNama_pelapor());
        holder.tvTanggalLapor.setText(dm.getTanggal_lapor());
        holder.tvTempat.setText(dm.getTempat());

    }

    @Override
    public int getItemCount() {
        return listData.size();
    }

    public class HolderData extends RecyclerView.ViewHolder {
        TextView tvID, tvNoLaporan, tvNIKPelapor, tvNamaPelapor, tvTanggalLapor, tvTempat;

        public HolderData(@NonNull View itemView) {
            super(itemView);

            tvID = itemView.findViewById(R.id.tv_id);
            tvNoLaporan = itemView.findViewById(R.id.tv_no_laporan);
            tvNIKPelapor = itemView.findViewById(R.id.tv_nik_pelapor);
            tvNamaPelapor = itemView.findViewById(R.id.tv_nama_pelapor);
            tvTanggalLapor = itemView.findViewById(R.id.tv_tanggal_lapor);
            tvTempat = itemView.findViewById(R.id.tv_tempat);
        }
    }
}
