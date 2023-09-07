class c_2910_1;
    integer i = -483;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2910_1;
    c_2910_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzx00x1111x1x00000z0zz01x1zxx00xxzzzxxxzzxxzxxxxzxzxzxzxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
