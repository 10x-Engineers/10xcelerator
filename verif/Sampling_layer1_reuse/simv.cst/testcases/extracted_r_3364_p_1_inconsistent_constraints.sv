class c_3364_1;
    integer i = -559;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3364_1;
    c_3364_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0101z1x101z10zzzx0z0z11xz1001100xzxzzxzxxxxxxxxzxxxzxxzzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
