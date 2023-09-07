class c_349_1;
    integer i = -57;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_349_1;
    c_349_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z111z11z10111001z11xx1zx1z1z001zxxzxzxzzzxxzxzxzxzzxzzzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
