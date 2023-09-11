class c_438_1;
    integer i = -71;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_438_1;
    c_438_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001x011x1x1xz00x1xz00zx10110x1xzzzzxzzxzxzzzxxxxzzzxxxzzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
