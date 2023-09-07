class c_462_1;
    integer i = -75;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_462_1;
    c_462_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz111z101z0zzzzx1z110000xz0zx01zxxxzzzxxzxxxxzzxzxxxxzzzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram