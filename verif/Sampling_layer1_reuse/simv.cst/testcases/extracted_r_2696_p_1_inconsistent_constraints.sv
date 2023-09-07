class c_2696_1;
    integer i = -448;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2696_1;
    c_2696_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01111xxzzx1z101xxxx0xx1zzx1xxzzzzzzxzzzzzxxxzxxzzzzzzzxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
