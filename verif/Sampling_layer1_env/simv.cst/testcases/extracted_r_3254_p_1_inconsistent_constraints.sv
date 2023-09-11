class c_3254_1;
    integer i = -541;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3254_1;
    c_3254_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1001xz0x1xxzzxx10zzz00zz10111110xxxzzxxxxxzzxzxzzxzxxxxzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
