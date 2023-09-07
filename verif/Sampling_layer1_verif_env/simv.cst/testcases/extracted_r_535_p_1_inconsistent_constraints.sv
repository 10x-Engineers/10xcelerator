class c_535_1;
    integer i = -88;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_535_1;
    c_535_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz1xz00z1z1zzxz1011x010x01010zxzxxxzzxxxzxxxxxzzzzxxzzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
