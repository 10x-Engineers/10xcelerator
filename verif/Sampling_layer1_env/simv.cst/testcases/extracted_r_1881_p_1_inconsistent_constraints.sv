class c_1881_1;
    integer i = -312;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1881_1;
    c_1881_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00011xx0z0z0xzzz0zz1zxzzzz000001zxxzxxxxxxxzzzzzxxxzzzzzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
