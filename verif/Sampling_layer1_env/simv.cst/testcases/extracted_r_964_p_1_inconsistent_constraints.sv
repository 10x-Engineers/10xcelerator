class c_964_1;
    integer i = -159;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_964_1;
    c_964_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z111xx0x1z01zz100xxxx01111x0xzxzxxxzxxzzxzzxxxzxzzxzzzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
