class c_1635_1;
    integer i = -271;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1635_1;
    c_1635_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010xz1101x11z1zx10x1z1zxx01z0z0xxxxxxxzxzxzxxzzxxxzxxzzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
