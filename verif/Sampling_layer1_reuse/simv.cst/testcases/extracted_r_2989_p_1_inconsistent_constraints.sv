class c_2989_1;
    integer i = -497;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2989_1;
    c_2989_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x10x11x00xz0111x01x10x01z1zxz1xxxxxxzzzxzxxxxxxxxxzzzxzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
