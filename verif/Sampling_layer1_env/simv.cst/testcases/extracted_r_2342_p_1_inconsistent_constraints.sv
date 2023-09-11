class c_2342_1;
    integer i = -389;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2342_1;
    c_2342_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx11x01xxx0xz1z01xx1xxzzx0xxx00xzzxxzzxzxxxxxxxzzzxzxxxxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
