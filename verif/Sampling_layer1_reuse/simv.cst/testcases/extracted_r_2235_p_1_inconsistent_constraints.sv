class c_2235_1;
    integer i = -371;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2235_1;
    c_2235_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z0z0z1z10011xx01x10x1z001zxzz1zzzxzxxxzxzxzxzzzxxzzxxzzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
