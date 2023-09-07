class c_603_1;
    integer i = -99;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_603_1;
    c_603_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1xz0zxx00zzx1zzxxx0z10z1x01zxxzxzzxxxzzxzxzzxxzzzxzxzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
