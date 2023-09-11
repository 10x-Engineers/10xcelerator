class c_2141_1;
    integer i = -355;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2141_1;
    c_2141_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x1zz1xxzzx11x0xxx1x011011z011zzzxxzxxzzxzzzxxxxzzzzxzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
