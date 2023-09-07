class c_939_1;
    integer i = -155;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_939_1;
    c_939_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11xzzz10x01zz1z011zz11z110zx1xxxxzxzzxzxxxzxzzzxzzzzzxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
