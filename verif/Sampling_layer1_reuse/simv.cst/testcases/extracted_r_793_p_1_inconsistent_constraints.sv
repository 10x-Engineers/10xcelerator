class c_793_1;
    integer i = -131;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_793_1;
    c_793_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxzxxxz0zzzzxx00zxxxz1xzx1zxx11xzzxxzzxxzxxxxzxxxxxzxxxzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
