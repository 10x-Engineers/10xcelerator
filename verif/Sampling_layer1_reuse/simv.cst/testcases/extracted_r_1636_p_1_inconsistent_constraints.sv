class c_1636_1;
    integer i = -271;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1636_1;
    c_1636_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10x00zxxz000z01x1zx110zxxz11x1zzxxzxzxzzzxxxzxxxzxxxxzzxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
