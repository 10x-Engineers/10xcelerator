class c_2286_1;
    integer i = -379;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2286_1;
    c_2286_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1011zzz0z1001010zxz1x0x01111z1xzxzxzxzzxxzzxxzxzxzxxzzzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
