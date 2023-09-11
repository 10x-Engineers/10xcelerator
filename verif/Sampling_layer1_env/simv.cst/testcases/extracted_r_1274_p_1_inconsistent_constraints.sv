class c_1274_1;
    integer i = -211;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1274_1;
    c_1274_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0010z1x0zxzx0z1101x1z11z0110x1x1xzxzxzzzzxxzzzzxxxzxxxzzzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
