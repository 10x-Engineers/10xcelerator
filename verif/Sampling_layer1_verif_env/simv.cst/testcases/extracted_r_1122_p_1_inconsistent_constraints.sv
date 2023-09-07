class c_1122_1;
    integer i = -185;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1122_1;
    c_1122_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz10zz011z111zx1z001x1x1z1xzz1xxxzxzxxzzxxxzxxxzxxxxxzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
