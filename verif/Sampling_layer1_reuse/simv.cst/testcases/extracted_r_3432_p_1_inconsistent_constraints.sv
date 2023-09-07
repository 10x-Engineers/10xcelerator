class c_3432_1;
    integer i = -570;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3432_1;
    c_3432_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001zzxxxx11z1zzx0z1z1010z100101xxxxxxzzzxzxzxzzzzxzxxxxzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
