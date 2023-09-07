class c_2233_1;
    integer i = -371;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2233_1;
    c_2233_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xz00101zzzxzz0xxz1xxxx1xxz011zxzzzzxzzzzzxzzzzxxzxzzxzxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
