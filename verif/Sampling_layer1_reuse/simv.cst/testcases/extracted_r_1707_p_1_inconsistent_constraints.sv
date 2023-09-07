class c_1707_1;
    integer i = -283;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1707_1;
    c_1707_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz0z1x1xx111zx1x1zzzz1zzxz1xz11zzxzzzzzxxxxxxzzzxxzxzzzxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
