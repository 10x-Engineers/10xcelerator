class c_26_1;
    integer i = -3;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_26_1;
    c_26_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz1xz1110z1z00z1xz0x0x1z010zz0xxzzxxxxxxxxxzxxxzxzzzzzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
