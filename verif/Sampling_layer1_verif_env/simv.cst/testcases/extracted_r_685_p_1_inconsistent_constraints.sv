class c_685_1;
    integer i = -113;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_685_1;
    c_685_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz01xzzz01z1zx0z1xz00101x0zxx01xxzxzxzzzzzzxxxzxxxzzxzxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
